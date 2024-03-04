.class public Lorg/light/TimeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/TimeLine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public entityID:I

.field public event:Ljava/lang/String;

.field public range:Lorg/light/TimeRange;

.field public time:J

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/TimeLine$1;

    invoke-direct {v0}, Lorg/light/TimeLine$1;-><init>()V

    sput-object v0, Lorg/light/TimeLine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lorg/light/TimeLine;->type:Ljava/lang/String;

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lorg/light/TimeLine;->entityID:I

    const-wide/16 v1, -0x1

    .line 10
    iput-wide v1, p0, Lorg/light/TimeLine;->time:J

    .line 11
    iput-object v0, p0, Lorg/light/TimeLine;->event:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/TimeLine;->type:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/TimeLine;->entityID:I

    .line 14
    const-class v0, Lorg/light/TimeRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/light/TimeRange;

    iput-object v0, p0, Lorg/light/TimeLine;->range:Lorg/light/TimeRange;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/TimeLine;->time:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/light/TimeLine;->event:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/light/TimeRange;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/TimeLine;->type:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/light/TimeLine;->entityID:I

    .line 4
    iput-object p3, p0, Lorg/light/TimeLine;->range:Lorg/light/TimeRange;

    .line 5
    iput-wide p4, p0, Lorg/light/TimeLine;->time:J

    .line 6
    iput-object p6, p0, Lorg/light/TimeLine;->event:Ljava/lang/String;

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
    iget-object v0, p0, Lorg/light/TimeLine;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lorg/light/TimeLine;->entityID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lorg/light/TimeLine;->range:Lorg/light/TimeRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-wide v0, p0, Lorg/light/TimeLine;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-object p2, p0, Lorg/light/TimeLine;->event:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
