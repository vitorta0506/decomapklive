.class public Lorg/light/bean/LightDelegateAgentRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/bean/LightDelegateAgentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public camera_frame_data_:[B

.field public camera_frame_height_:I

.field public camera_frame_width_:I

.field public json_string_:Ljava/lang/String;

.field public key_:Ljava/lang/String;

.field public nativeContext:J

.field public sharedMemory:Landroid/os/SharedMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/light/bean/LightDelegateAgentRequest$1;

    invoke-direct {v0}, Lorg/light/bean/LightDelegateAgentRequest$1;-><init>()V

    sput-object v0, Lorg/light/bean/LightDelegateAgentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->key_:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_width_:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_height_:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->json_string_:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->nativeContext:J

    .line 15
    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BIILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/bean/LightDelegateAgentRequest;->key_:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    .line 4
    iput p3, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_width_:I

    .line 5
    iput p4, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_height_:I

    .line 6
    iput-object p5, p0, Lorg/light/bean/LightDelegateAgentRequest;->json_string_:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lorg/light/bean/LightDelegateAgentRequest;->nativeContext:J

    return-void
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/light/bean/LightDelegateAgentRequest;->nativeRelease()V

    return-void
.end method

.method public getDataFromSharedMemory()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    if-nez v0, :cond_0

    const-string v0, "TAG"

    const-string v1, "yzm sharedMemory return"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 6
    new-array v1, v1, [B

    .line 7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    iput-object v1, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    .line 9
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public putDataToSharedMemory()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_1

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedMemory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    .line 6
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v1, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    sget v2, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v1, v2}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 9
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->key_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_data_:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3
    iget v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_width_:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->camera_frame_height_:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->json_string_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->nativeContext:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object v0, p0, Lorg/light/bean/LightDelegateAgentRequest;->sharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
