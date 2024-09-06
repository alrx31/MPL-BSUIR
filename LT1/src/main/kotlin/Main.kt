import client.Client
import hosting.VideoHosting
import videos.*


fun main(args: Array<String>){
    val client = Client()
    while (true){
        println()
        println("========================")
        println()
        println("1. Create video")
        println("2. Get video list")
        println("3. Delete video")
        println("4. Watch video")
        println("5. Create playlist")
        println("6. Add video to playlist")
        println("7. Start playlist")
        println("8. Playlists list")
        println("9. Exit");

        var choice:Number;
        try{
            choice = readln().toInt()
        }catch (e:Exception){
            println("invalid Input")
            continue;
        }



        when(choice){
            1->{
                client.createVideo();
            }
            2->{
                var videos = client.getVideoList();
                if(videos.size == 0){
                    println("No videos found")
                }else{
                    println("Videos:")
                    videos.forEach {
                        println(it.Name + " "+it.Duration)
                    }
                }
            }
            3->{
                println("Enter video name: ");
                var name = readln();
                client.deleteVideo(name);
            }
            4->{
                println("Enter video name: ");
                var name = readln();
                client.watchVideo(name);
            }
            5->{
                client.createPlaylist();
            }
            6->{
                client.addVideoToPlayList();
            }
            7->{
                println("Enter playlist name: ");
                var name = readln();
                client.startPlaylist(name);
            }
            8 -> {
                println("Playlists list")
                var list = client.getAllPlaylists()
                for (playlist in list){
                    println(playlist.Name)
                }
            }
            9 -> {
                break
            };
        }

    }


}