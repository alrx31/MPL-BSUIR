package client
import hosting.VideoHosting
import videos.*;

abstract class ClientBase {
    abstract fun createVideo();
    abstract fun getVideoList():List<Video>;
    abstract fun watchVideo(name: String);
    abstract fun deleteVideo(name: String);
    abstract fun createPlaylist();
    abstract fun addVideoToPlayList();
    abstract fun startPlaylist(Name:String);

    abstract fun getAllPlaylists():List<playList>
}



class Client:ClientBase(){


    private val hosting = VideoHosting();
    private val playlists = mutableListOf<playList>();


    init {
        hosting.addVideo(Cat_Video("1",10))
        hosting.addVideo(Cat_Video("Cat Video 2",10))
        hosting.addVideo(Cat_Video("Cat Video 3",10))
        hosting.addVideo(Dog_Video("Dog Video 1",10))
        hosting.addVideo(Dog_Video("Dog Video 2",10))
        hosting.addVideo(Dog_Video("Dog Video 3",10))
        hosting.addVideo(Music_Video("Music Video 1",10))
        hosting.addVideo(Music_Video("Music Video 2",10))
        hosting.addVideo(Music_Video("Music Video 3",10))
        playlists.add(playList("1"))
        playlists[0].addVideo(hosting.getVideo("1")!!)
        playlists[0].addVideo(hosting.getVideo("Cat Video 2")!!)

    }

    override fun createVideo(){
        println("Enter video name: ");
        var name = readLine()!!;
        println("Enter video duration: ");
        var duration:Number;
        try{
            duration= readLine()!!.toInt();
        }catch (e:Exception){
            println("InvalidInput");
            return;
        }
        println("Enter video type: ");
        println("1. Cat Video");
        println("2. Dog Video");
        println("3. Music Video");
        var type:Number;
        try{
            type = readLine()!!.toInt();
        }catch(e:Exception){
            println("Invalid Input");
            return;
        }
        if(type>3 || type<1){
            println("Invalid type");
            return;
        }
        when(type){
            1->{
                var video = Cat_Video(name,duration);
                hosting.addVideo(video);
            }
            2->{
                var video = Dog_Video(name,duration);
                hosting.addVideo(video);
            }
            3->{
                var video = Music_Video(name,duration);
                hosting.addVideo(video);
            }
        }
    }

    override fun watchVideo(name: String){
        var video = hosting.getVideo(name);
        if(video == null){
            println("Video not found");
            return;
        }
        video.Vatch();
    }

    override fun deleteVideo(name: String){
        var video = hosting.getVideo(name);
        if(video == null){
            println("Video not found");
            return;
        }
        println("Deleting video: ${video.Name}. Are you sure? (y/n)");
        var choice = readLine()!!;
        if(choice == "y") {
            // delete video from all playlists
            playlists.forEach { it.deleteVideo(video) }
            hosting.deleteVideo(video);
        }
    }

    override fun createPlaylist(){
        println("Enter playlist name: ");
        var name = readLine()!!;
        playlists.add(playList(name));
    }
    override fun addVideoToPlayList(){
        println("Enter playlist name: ");
        var name = readLine()!!;
        var playlist = playlists.find { it.Name == name }
        if(playlist == null){
            println("Playlist not found");
            return;
        }
        println("Enter video name: ");
        var videoName = readLine()!!;
        var video = hosting.getVideo(videoName);
        if(video == null){
            println("Video not found");
            return;
        }
        playlist.addVideo(video);
    }


    override fun getVideoList():List<Video>{
        return hosting.getList();
    }

    override fun startPlaylist(Name:String){
        var playlist = playlists.find { it.Name == Name }
        if(playlist == null){
            println("Playlist not found");
            return;
        }

        playlist.startPlaylist();
    }

    override fun getAllPlaylists():List<playList> {
        return playlists;
    }
}
