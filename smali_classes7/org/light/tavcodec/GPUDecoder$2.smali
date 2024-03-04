.class Lorg/light/tavcodec/GPUDecoder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/tavcodec/GPUDecoder;->releaseDecoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/light/tavcodec/GPUDecoder;


# direct methods
.method constructor <init>(Lorg/light/tavcodec/GPUDecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/light/tavcodec/GPUDecoder$2;->this$0:Lorg/light/tavcodec/GPUDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder$2;->this$0:Lorg/light/tavcodec/GPUDecoder;

    invoke-static {v0}, Lorg/light/tavcodec/GPUDecoder;->access$200(Lorg/light/tavcodec/GPUDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder$2;->this$0:Lorg/light/tavcodec/GPUDecoder;

    invoke-static {v0}, Lorg/light/tavcodec/GPUDecoder;->access$200(Lorg/light/tavcodec/GPUDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_1
    iget-object v0, p0, Lorg/light/tavcodec/GPUDecoder$2;->this$0:Lorg/light/tavcodec/GPUDecoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/light/tavcodec/GPUDecoder;->access$202(Lorg/light/tavcodec/GPUDecoder;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;

    return-void
.end method
