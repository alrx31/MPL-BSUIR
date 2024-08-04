package videos

import org.junit.jupiter.api.Test

import org.junit.jupiter.api.Assertions.*

class playListTest {


    @Test
    fun addVideo() {
        var video = Cat_Video("1",10)
        var playlist = playList("1")
        assertEquals(playlist.videos.size,0)
        playlist.addVideo(video)
        assertEquals(playlist.videos.size,1)
    }
    @Test
    fun deleteVideo() {
        var video = Cat_Video("1",10)
        var playlist = playList("1")
        playlist.addVideo(video)
        assertEquals(playlist.videos.size,1)
        playlist.deleteVideo(video)
        assertEquals(playlist.videos.size,0)
    }
    @Test
    fun startPlaylist(){
        var video = Cat_Video("1",10)
        var playlist = playList("1")
        var res = playlist.startPlaylist()
        assertEquals(res,Unit)
    }
}