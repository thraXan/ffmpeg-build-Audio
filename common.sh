#!/usr/bin/env bash

FFMPEG_VERSION=4.4.1
FFMPEG_TARBALL=ffmpeg-$FFMPEG_VERSION.tar.bz2
FFMPEG_TARBALL_URL=http://ffmpeg.org/releases/$FFMPEG_TARBALL

FFMPEG_CONFIGURE_FLAGS=(
    --disable-shared
    --enable-static
    --enable-pic

    --disable-doc
    --disable-debug
    --disable-avdevice
    --disable-swscale
    --disable-programs
    --enable-rdft
    --enable-ffmpeg
#    --enable-ffprobe
    
    	--disable-ffprobe
	--disable-ffplay
	--disable-fast-unaligned
	
    --disable-network
    --disable-muxers
    --disable-demuxers
    --disable-zlib
    --disable-bzlib
    --disable-iconv
    --disable-bsfs
    --disable-filters
    --disable-parsers
    --disable-indevs
    --disable-outdevs
    --disable-encoders
    
	--enable-encoder=flac
#	--enable-muxer=flac
    
    --disable-decoders
    --disable-hwaccels
    --disable-nvenc
    --disable-xvmc
    --disable-videotoolbox
    --disable-audiotoolbox

    --disable-filters
    --enable-filter=aformat
    --enable-filter=anull
    --enable-filter=atrim
    --enable-filter=format
    --enable-filter=null
    --enable-filter=setpts
    --enable-filter=trim
    
    --enable-filter=aresample

    --disable-protocols
    --enable-protocol=file
    --enable-protocol=pipe

#    --enable-demuxer=image2
    --enable-demuxer=aac
    --enable-demuxer=ac3
    --enable-demuxer=aiff
    --enable-demuxer=ape
    --enable-demuxer=asf
    --enable-demuxer=au
#    --enable-demuxer=avi
#    --enable-demuxer=flac
    --enable-demuxer=flv
    --enable-demuxer=matroska
    --enable-demuxer=mov
    
    --enable-decoder=mov
    
    --enable-demuxer=m4v
#    --enable-demuxer=mp3
    --enable-demuxer=mpc
    --enable-demuxer=mpc8
    --enable-demuxer=ogg
    --enable-demuxer=pcm_alaw
    --enable-demuxer=pcm_mulaw
    --enable-demuxer=pcm_f64be
    --enable-demuxer=pcm_f64le
    --enable-demuxer=pcm_f32be
    --enable-demuxer=pcm_f32le
    --enable-demuxer=pcm_s32be
    --enable-demuxer=pcm_s32le
    --enable-demuxer=pcm_s24be
    --enable-demuxer=pcm_s24le
    --enable-demuxer=pcm_s16be
    --enable-demuxer=pcm_s16le
    --enable-demuxer=pcm_s8
    --enable-demuxer=pcm_u32be
    --enable-demuxer=pcm_u32le
    --enable-demuxer=pcm_u24be
    --enable-demuxer=pcm_u24le
    --enable-demuxer=pcm_u16be
    --enable-demuxer=pcm_u16le
    --enable-demuxer=pcm_u8
    --enable-demuxer=rm
    --enable-demuxer=shorten
    --enable-demuxer=tak
    --enable-demuxer=tta
    --enable-demuxer=wav
    --enable-demuxer=wv
    --enable-demuxer=xwma
    --enable-demuxer=dsf

    --enable-decoder=aac
    --enable-decoder=aac_latm
    --enable-decoder=ac3
    --enable-decoder=alac
    --enable-decoder=als
    --enable-decoder=ape
    --enable-decoder=atrac1
    --enable-decoder=atrac3
    --enable-decoder=eac3
    --enable-decoder=flac
    --enable-decoder=gsm
    --enable-decoder=gsm_ms
#    --enable-decoder=mp1
#    --enable-decoder=mp1float
#    --enable-decoder=mp2
#    --enable-decoder=mp2float
#    --enable-decoder=mp3
#    --enable-decoder=mp3adu
#    --enable-decoder=mp3adufloat
#    --enable-decoder=mp3float
#    --enable-decoder=mp3on4
#    --enable-decoder=mp3on4float
    --enable-decoder=mpc7
    --enable-decoder=mpc8
    --enable-decoder=opus
    --enable-decoder=ra_144
    --enable-decoder=ra_288
    --enable-decoder=ralf
    --enable-decoder=shorten
    --enable-decoder=tak
    --enable-decoder=tta
    --enable-decoder=vorbis
    --enable-decoder=wavpack
    --enable-decoder=wmalossless
    --enable-decoder=wmapro
    --enable-decoder=wmav1
    --enable-decoder=wmav2
    --enable-decoder=wmavoice

    --enable-decoder=pcm_alaw
    --enable-decoder=pcm_bluray
    --enable-decoder=pcm_dvd
    --enable-decoder=pcm_f32be
    --enable-decoder=pcm_f32le
    --enable-decoder=pcm_f64be
    --enable-decoder=pcm_f64le
    --enable-decoder=pcm_lxf
    --enable-decoder=pcm_mulaw
    --enable-decoder=pcm_s8
    --enable-decoder=pcm_s8_planar
    --enable-decoder=pcm_s16be
    --enable-decoder=pcm_s16be_planar
    --enable-decoder=pcm_s16le
    --enable-decoder=pcm_s16le_planar
    --enable-decoder=pcm_s24be
    --enable-decoder=pcm_s24daud
    --enable-decoder=pcm_s24le
    --enable-decoder=pcm_s24le_planar
    --enable-decoder=pcm_s32be
    --enable-decoder=pcm_s32le
    --enable-decoder=pcm_s32le_planar
    --enable-decoder=pcm_u8
    --enable-decoder=pcm_u16be
    --enable-decoder=pcm_u16le
    --enable-decoder=pcm_u24be
    --enable-decoder=pcm_u24le
    --enable-decoder=pcm_u32be
    --enable-decoder=pcm_u32le
    --enable-decoder=pcm_zork
    --enable-decoder=dsd_lsbf
    --enable-decoder=dsd_msbf
    --enable-decoder=dsd_lsbf_planar
    --enable-decoder=dsd_msbf_planar

    --enable-parser=aac
    --enable-parser=aac_latm
    --enable-parser=ac3
    
#	--enable-parser=ape
    
    --enable-parser=cook
    --enable-parser=dca
#    --enable-parser=flac
    --enable-parser=gsm
#    --enable-parser=mpegaudio
    --enable-parser=tak
    --enable-parser=vorbis
)
