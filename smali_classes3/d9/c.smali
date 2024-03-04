.class public interface abstract Ld9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/g;


# static fields
.field public static final d0:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.guochao.faceshow.live.timeout_v2"

    goto :goto_0

    :cond_0
    const-string v0, "com.guochao.zaime.live.timeout"

    :goto_0
    sput-object v0, Ld9/c;->d0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract C()V
.end method

.method public abstract e1()V
.end method

.method public abstract j0()V
.end method

.method public abstract setFreeLinkMic(Z)V
.end method

.method public abstract setLinkMicEnabled(Z)V
.end method

.method public abstract setLiveResolution(I)V
.end method

.method public abstract setMirror(Z)V
.end method

.method public abstract w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
