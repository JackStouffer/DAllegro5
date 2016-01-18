module allegro5.allegro_video;

version(ALLEGRO_NO_PRAGMA_LIB) {}
else
{
	pragma(lib, "allegro_video");
}

import allegro5.allegro;
import allegro5.allegro_audio;

extern (C)
{
	enum ALLEGRO_VIDEO_EVENT_TYPE
	{
	   ALLEGRO_EVENT_VIDEO_FRAME_ALLOC  = 550,
	   ALLEGRO_EVENT_VIDEO_FRAME_SHOW   = 551
	}

	struct ALLEGRO_VIDEO {};

	enum ALLEGRO_VIDEO_POSITION_TYPE
	{
		ALLEGRO_VIDEO_POSITION_ACTUAL        = 0,
		ALLEGRO_VIDEO_POSITION_VIDEO_DECODE  = 1,
		ALLEGRO_VIDEO_POSITION_AUDIO_DECODE  = 2
	}

	ALLEGRO_VIDEO* al_open_video(in char* filename);
	void al_close_video(ALLEGRO_VIDEO* video);
	void al_start_video(ALLEGRO_VIDEO* video, ALLEGRO_MIXER* mixer);
	void al_start_video_with_voice(ALLEGRO_VIDEO* video, ALLEGRO_VOICE* voice);
	ALLEGRO_EVENT_SOURCE* al_get_video_event_source(ALLEGRO_VIDEO* video);
	void al_pause_video(ALLEGRO_VIDEO* video, bool paused);
	bool al_is_video_paused(ALLEGRO_VIDEO* video);
	double al_get_video_aspect_ratio(ALLEGRO_VIDEO* video);
	double al_get_video_audio_rate(ALLEGRO_VIDEO* video);
	double al_get_video_fps(ALLEGRO_VIDEO* video);
	int al_get_video_width(ALLEGRO_VIDEO* video);
	int al_get_video_height(ALLEGRO_VIDEO* video);
	ALLEGRO_BITMAP* al_get_video_frame(ALLEGRO_VIDEO* video);
	double al_get_video_position(ALLEGRO_VIDEO* video,
		ALLEGRO_VIDEO_POSITION_TYPE which);
	void al_seek_video(ALLEGRO_VIDEO* video, double pos_in_seconds);
}