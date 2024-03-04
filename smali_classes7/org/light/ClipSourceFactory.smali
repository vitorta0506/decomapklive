.class public interface abstract Lorg/light/ClipSourceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/ClipSourceFactory$AudioReader;,
        Lorg/light/ClipSourceFactory$VideoReader;
    }
.end annotation


# virtual methods
.method public abstract createAudioReader(Ljava/lang/String;)Lorg/light/ClipSourceFactory$AudioReader;
.end method

.method public abstract createVideoReader(Ljava/lang/String;)Lorg/light/ClipSourceFactory$VideoReader;
.end method
