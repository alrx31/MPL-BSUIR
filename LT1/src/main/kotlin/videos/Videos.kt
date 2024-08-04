package videos
abstract class playListBase(var Name:String){
    abstract fun addVideo(video: Video)
    abstract fun startVideo(video: Video)
    abstract fun startPlaylist();
    abstract fun deleteVideo(video: Video)
}



abstract class Video(var Name:String,var Duration:Int){
    public fun Vatch(){
        println("Watching video: $Name")
    }
}

public class Cat_Video(Name:String,Duration:Int):Video(Name,Duration){
}

class Dog_Video(Name: String,Duration: Int) :Video(Name,Duration){
}

class Music_Video(Name: String,Duration: Int) :Video(Name,Duration){
}


class playList(Name:String):playListBase(Name){
    public val videos = mutableListOf<Video>()

    override fun addVideo(video: Video) {
        videos.add(video)
    }

    override fun startVideo(video: Video) {
        println("Starting video: ${video.Name}")
    }

    private fun getNextVideo(video: Video): Video {
        var index = videos.indexOf(video)
        if(index == videos.size-1){
            println("last video in playlist, starting from beginning")
            return videos[0]
        }
        return videos[index+1]
    }

    override fun deleteVideo(video: Video) {
        // chech if video is in playlist
        videos.remove(video)
    }
    override fun startPlaylist(){
        if(videos.size == 0){
            println("Playlist is empty")
            return
        }
        var video = videos[0]
        startVideo(video)
        while (true){
            println("1. Next video")
            println("2. Exit")
            var choice = readLine()!!.toInt()
            when(choice){
                1->{
                    video = getNextVideo(video)
                    startVideo(video)
                }
                2->{
                    break
                }
            }
        }
    }
}