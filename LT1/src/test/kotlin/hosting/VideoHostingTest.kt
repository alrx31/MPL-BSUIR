package hosting

import org.junit.jupiter.api.Test

import org.junit.jupiter.api.Assertions.*
import videos.Cat_Video

class VideoHostingTest {

    @Test
    fun addVideo() {
        var hosting = VideoHosting()
        hosting.addVideo(Cat_Video("1",10))
        var video = hosting.getVideo("1")
        assertEquals(video?.Name, "1")
    }

    @Test
    fun getVideo() {
        var hosting = VideoHosting()
        hosting.addVideo(Cat_Video("1",10))
        var video = hosting.getVideo("1")
        assertEquals(video?.Name, "1")
    }

    @Test
    fun getList() {
        var hosting = VideoHosting()
        hosting.addVideo(Cat_Video("1k5",10))
        var videos = hosting.getList()
        assertEquals(videos.size , 1);
    }

    @Test
    fun deleteVideo() {
        var hosting = VideoHosting()
        var video = Cat_Video("1",10);
        hosting.addVideo(video)
        var videos = hosting.getList()
        hosting.deleteVideo(video)
        assertEquals(videos.size , 0);
    }

}