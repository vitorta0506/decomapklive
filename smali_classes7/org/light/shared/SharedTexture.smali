.class public Lorg/light/shared/SharedTexture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/shared/SharedTexture$TexId;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/shared/SharedTexture;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SharedTexture"

.field private static final texMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/light/shared/SharedTexture$TexId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fenceFd:Landroid/os/ParcelFileDescriptor;

.field private hwb:Landroid/hardware/HardwareBuffer;

.field private nativeBuffer:Lorg/light/NativeBuffer;

.field private originTextureId:I

.field private simpleRenderer:Lorg/light/utils/SimpleRenderer;

.field private textureHeight:I

.field private textureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/light/shared/SharedTexture;->texMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v0, Lorg/light/shared/SharedTexture$1;

    invoke-direct {v0}, Lorg/light/shared/SharedTexture$1;-><init>()V

    sput-object v0, Lorg/light/shared/SharedTexture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/shared/SharedTexture;->textureWidth:I

    .line 4
    iput v0, p0, Lorg/light/shared/SharedTexture;->textureHeight:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 6
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 7
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    .line 8
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    .line 9
    invoke-static {}, Lorg/light/shared/SharedTexture;->ApiLevelHardwareBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lorg/light/NativeBuffer;->setFenceEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lorg/light/shared/SharedTexture;->textureWidth:I

    .line 14
    iput v0, p0, Lorg/light/shared/SharedTexture;->textureHeight:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 16
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 17
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    .line 18
    iput-object v0, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    .line 19
    invoke-static {}, Lorg/light/shared/SharedTexture;->ApiLevelHardwareBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/shared/SharedTexture;->textureWidth:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/shared/SharedTexture;->textureHeight:I

    .line 23
    const-class v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    .line 24
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public static ApiLevelHardwareBuffer()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private acquireTexture()I
    .locals 6

    .line 1
    sget-object v0, Lorg/light/shared/SharedTexture;->texMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/shared/SharedTexture$TexId;

    if-nez v1, :cond_0

    const/16 v1, 0xde1

    .line 3
    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->createTexture(I)I

    move-result v1

    .line 4
    new-instance v2, Lorg/light/shared/SharedTexture$TexId;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-direct {v2, v1, v3}, Lorg/light/shared/SharedTexture$TexId;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    .line 5
    iget v1, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, v1, Lorg/light/shared/SharedTexture$TexId;->refCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 7
    :goto_0
    iget v1, v1, Lorg/light/shared/SharedTexture$TexId;->texId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseTexture()V
    .locals 7

    .line 1
    sget-object v0, Lorg/light/shared/SharedTexture;->texMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    if-lez v1, :cond_1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/light/shared/SharedTexture$TexId;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Lorg/light/shared/SharedTexture$TexId;->refCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 5
    iget v2, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget v1, v1, Lorg/light/shared/SharedTexture$TexId;->texId:I

    invoke-static {v1}, Lorg/light/utils/LightGLUtils;->deleteTexture(I)V

    :cond_0
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-virtual {p0}, Lorg/light/shared/SharedTexture;->release()V

    return-void
.end method

.method public getTexture()I
    .locals 4

    .line 1
    invoke-static {}, Lorg/light/shared/SharedTexture;->ApiLevelHardwareBuffer()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->release()V

    .line 5
    :cond_2
    new-instance v0, Lorg/light/NativeBuffer;

    iget-object v2, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    invoke-direct {v0, v2}, Lorg/light/NativeBuffer;-><init>(Landroid/hardware/HardwareBuffer;)V

    iput-object v0, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 6
    invoke-direct {p0}, Lorg/light/shared/SharedTexture;->acquireTexture()I

    move-result v0

    .line 7
    iget-object v2, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v2, v0}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 8
    iget-object v2, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_3

    .line 9
    iget-object v3, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v3, v2}, Lorg/light/NativeBuffer;->waitFence(Landroid/os/ParcelFileDescriptor;)Z

    .line 10
    iget-object v2, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_3
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTexture error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SharedTexture"

    invoke-static {v2, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public release()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 3
    iput-object v1, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6
    iput-object v1, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lorg/light/utils/SimpleRenderer;->release()V

    .line 9
    iput-object v1, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lorg/light/NativeBuffer;->release()V

    .line 12
    iput-object v1, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    .line 13
    :cond_3
    invoke-direct {p0}, Lorg/light/shared/SharedTexture;->releaseTexture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedTexture"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTexture(III)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/light/shared/SharedTexture;->ApiLevelHardwareBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    if-eq v0, p1, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/light/shared/SharedTexture;->releaseTexture()V

    .line 4
    :cond_1
    iput p1, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    .line 5
    iput p2, p0, Lorg/light/shared/SharedTexture;->textureWidth:I

    .line 6
    iput p3, p0, Lorg/light/shared/SharedTexture;->textureHeight:I

    if-gtz p1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Lorg/light/NativeBuffer;

    invoke-direct {p1, p2, p3}, Lorg/light/NativeBuffer;-><init>(II)V

    iput-object p1, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1, p2, p3}, Lorg/light/NativeBuffer;->updateSize(II)Z

    .line 10
    :goto_0
    invoke-direct {p0}, Lorg/light/shared/SharedTexture;->acquireTexture()I

    move-result p1

    .line 11
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v0, p1}, Lorg/light/NativeBuffer;->bindTexture(I)Z

    .line 12
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {p1}, Lorg/light/NativeBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    .line 13
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    if-nez p1, :cond_4

    .line 14
    new-instance p1, Lorg/light/utils/SimpleRenderer;

    invoke-direct {p1}, Lorg/light/utils/SimpleRenderer;-><init>()V

    iput-object p1, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    .line 15
    :cond_4
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/light/utils/SimpleRenderer;->setForHardwareBuffer(Z)V

    .line 16
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->simpleRenderer:Lorg/light/utils/SimpleRenderer;

    iget v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    iget-object v1, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {v1}, Lorg/light/NativeBuffer;->getBindTexture()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/light/utils/SimpleRenderer;->draw(IIII)V

    .line 17
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 19
    :cond_5
    iget-object p1, p0, Lorg/light/shared/SharedTexture;->nativeBuffer:Lorg/light/NativeBuffer;

    invoke-virtual {p1}, Lorg/light/NativeBuffer;->createFence()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTexture error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SharedTexture"

    invoke-static {p2, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/light/shared/SharedTexture;->ApiLevelHardwareBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lorg/light/shared/SharedTexture;->originTextureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget v0, p0, Lorg/light/shared/SharedTexture;->textureWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v0, p0, Lorg/light/shared/SharedTexture;->textureHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->hwb:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object v0, p0, Lorg/light/shared/SharedTexture;->fenceFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
