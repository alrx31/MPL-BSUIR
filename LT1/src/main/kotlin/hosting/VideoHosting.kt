package hosting
import videos.*;

abstract class VideoHostingBase {
    abstract fun addVideo(video: Video)
    abstract fun getVideo(Name:String): Video?
    abstract fun getList():List<Video>
    abstract fun deleteVideo(video: Video);
}


class VideoHosting: VideoHostingBase() {
    private val videos = mutableListOf<Video>()



    override fun addVideo(video: Video) {
        videos.add(video)
    }

    override fun getVideo(Name:String): Video? {
        val video = videos.find { it.Name == Name }
        return video
    }
    override fun getList():List<Video> {
        return videos
    }

    override fun deleteVideo(video: Video) {
        videos.remove(video)
    }

}