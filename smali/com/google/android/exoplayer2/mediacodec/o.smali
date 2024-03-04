.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/mediacodec/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/n;->b:Lcom/google/android/exoplayer2/mediacodec/n;

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/o;->a:Lcom/google/android/exoplayer2/mediacodec/o;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
