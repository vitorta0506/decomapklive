.class public interface abstract Lorg/light/ClipSourceFactory$AudioReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/ClipSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioReader"
.end annotation


# virtual methods
.method public abstract copyNextFrame()Lorg/light/AudioFrame;
.end method

.method public abstract copyNextFrameSyncEnable(Z)Lorg/light/AudioFrame;
.end method

.method public abstract duration()J
.end method

.method public abstract release()V
.end method

.method public abstract seek(J)V
.end method

.method public abstract setVolume(F)V
.end method
