.class public abstract Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$UrlThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UrlThread"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$UrlThread;->url:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$UrlThread;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$UrlThread;->run(Ljava/lang/String;)V

    return-void
.end method

.method public abstract run(Ljava/lang/String;)V
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$UrlThread;->url:Ljava/lang/String;

    return-void
.end method
