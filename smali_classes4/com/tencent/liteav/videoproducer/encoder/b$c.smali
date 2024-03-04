.class final Lcom/tencent/liteav/videoproducer/encoder/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/videoproducer/encoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/b$c;->a:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncoderProfile;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/b$c;-><init>()V

    return-void
.end method
