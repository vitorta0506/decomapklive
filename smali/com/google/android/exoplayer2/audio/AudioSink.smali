.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/k1;)Z
.end method

.method public abstract b()Lcom/google/android/exoplayer2/k2;
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lcom/google/android/exoplayer2/k2;)V
.end method

.method public abstract e()Z
.end method

.method public abstract f(I)V
.end method

.method public abstract flush()V
.end method

.method public abstract g()V
.end method

.method public abstract h(Lcom/google/android/exoplayer2/audio/e;)V
.end method

.method public abstract i(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract j(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/k1;)I
.end method

.method public abstract l()V
.end method

.method public abstract m(Lcom/google/android/exoplayer2/audio/u;)V
.end method

.method public abstract n()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract o(La2/s1;)V
    .param p1    # La2/s1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract p(Z)J
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public abstract reset()V
.end method

.method public abstract s(Lcom/google/android/exoplayer2/k1;I[I)V
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract t(Z)V
.end method
