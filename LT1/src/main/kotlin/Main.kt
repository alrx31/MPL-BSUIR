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


        println("6. Exit")
        var choice = readln().toInt()



        when(choice){
            1->{
                client.createVideo();
            }
            2->{
                var videos = client.getVideoList();
                println("Videos:")
                videos.forEach {
                    println(it.Name)
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
        }

    }


}