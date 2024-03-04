.class public interface abstract Lorg/light/ClipSourceFactory$VideoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/ClipSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoReader"
.end annotation


# virtual methods
.method public abstract duration()J
.end method

.method public abstract height()I
.end method

.method public abstract readSample(J)Lorg/light/bean/Texture;
.end method

.method public abstract release()V
.end method

.method public abstract width()I
.end method
