from moviepy import VideoFileClip

movie_path = "./resources/small.gif"

with VideoFileClip(movie_path) as clip:
    print(clip.duration)
    print(clip.fps)
    print(clip.size)
    if clip.audio:
        print(clip.audio)
        print(clip.audio.reader)
        print(clip.audio.reader.nchannels)
        print(clip.audio.reader.samplerate)
        print(clip.audio.reader.nframes)
        print(clip.audio.reader.duration)
        print(clip.audio.reader.bytes_per_frame)
        print(clip.audio.reader.bytes_per_sample)
        print(clip.audio.reader.nbytes)
        print(clip.audio.reader.nbytes_total)
        print(clip.audio.reader.duration)
        print(clip.audio.reader.fps)
    clip.preview()
