.class public Lorg/light/AudioFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/AudioFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public duration:J

.field public length:J

.field public pts:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/AudioFrame$1;

    invoke-direct {v0}, Lorg/light/AudioFrame$1;-><init>()V

    sput-object v0, Lorg/light/AudioFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/light/AudioFrame;->pts:J

    .line 3
    iput-wide p3, p0, Lorg/light/AudioFrame;->length:J

    .line 4
    iput-object p5, p0, Lorg/light/AudioFrame;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioFrame;->pts:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/AudioFrame;->length:J

    long-to-int v1, v0

    .line 8
    new-array v0, v1, [B

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/light/AudioFrame;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/light/AudioFrame;->pts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lorg/light/AudioFrame;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lorg/light/AudioFrame;->length:J

    long-to-int p2, v0

    new-array p2, p2, [B

    .line 4
    iget-object v0, p0, Lorg/light/AudioFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
