.class public Lorg/light/shared/SharedBytes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/light/shared/SharedBytes;",
            ">;"
        }
    .end annotation
.end field

.field private static Constructor_ParcelFileDescriptor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static MemoryFile_getFileDescriptor:Ljava/lang/reflect/Method; = null

.field private static MemoryFile_mAddress:Ljava/lang/reflect/Field; = null

.field private static MemoryFile_mFD:Ljava/lang/reflect/Field; = null

.field private static MemoryFile_mLength:Ljava/lang/reflect/Field; = null

.field private static MemoryFile_native_mmap:Ljava/lang/reflect/Method; = null

.field private static final PROT_READ:I = 0x1

.field private static final PROT_WRITE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SharedBytes"


# instance fields
.field private bytesLength:I

.field private memoryFile:Landroid/os/MemoryFile;

.field private pfd:Landroid/os/ParcelFileDescriptor;

.field private sharedMemory:Landroid/os/SharedMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/shared/SharedBytes$1;

    invoke-direct {v0}, Lorg/light/shared/SharedBytes$1;-><init>()V

    sput-object v0, Lorg/light/shared/SharedBytes;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    invoke-static {}, Lorg/light/shared/SharedBytes;->ApiLevelSharedMemory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    :try_start_0
    const-class v0, Landroid/os/ParcelFileDescriptor;

    .line 4
    const-class v1, Landroid/os/MemoryFile;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    const-class v4, Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lorg/light/shared/SharedBytes;->Constructor_ParcelFileDescriptor:Ljava/lang/reflect/Constructor;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 9
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "native_mmap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    aget-object v4, v0, v3

    sput-object v4, Lorg/light/shared/SharedBytes;->MemoryFile_native_mmap:Ljava/lang/reflect/Method;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "getFileDescriptor"

    new-array v3, v5, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_getFileDescriptor:Ljava/lang/reflect/Method;

    const-string v0, "mFD"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mFD:Ljava/lang/reflect/Field;

    const-string v0, "mLength"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mLength:Ljava/lang/reflect/Field;

    const-string v0, "mAddress"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mAddress:Ljava/lang/reflect/Field;

    .line 15
    sget-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_getFileDescriptor:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 16
    sget-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_native_mmap:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 17
    sget-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mFD:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    sget-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mLength:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 19
    sget-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mAddress:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reflect error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedBytes"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    .line 4
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 5
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    .line 9
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 10
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    .line 12
    invoke-static {}, Lorg/light/shared/SharedBytes;->ApiLevelSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    goto :goto_0

    .line 14
    :cond_0
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    :goto_0
    return-void
.end method

.method public static ApiLevelSharedMemory()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getBytesMemoryFile()[B
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    const-string v1, "SharedBytes"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 4
    iput-object v2, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    .line 5
    :cond_0
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryFile-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    .line 6
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 7
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 8
    sget-object v3, Lorg/light/shared/SharedBytes;->MemoryFile_mFD:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    sget-object v3, Lorg/light/shared/SharedBytes;->MemoryFile_mLength:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    iget v6, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    sget-object v3, Lorg/light/shared/SharedBytes;->MemoryFile_native_mmap:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    iget v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 11
    sget-object v0, Lorg/light/shared/SharedBytes;->MemoryFile_mAddress:Ljava/lang/reflect/Field;

    iget-object v5, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    new-array v2, v0, [B

    .line 13
    iget-object v3, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v3, v2, v6, v6, v0}, Landroid/os/MemoryFile;->readBytes([BIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBytesMemoryFile error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "getBytesMemoryFile pfd == null"

    .line 15
    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private getBytesSharedMemory()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    const-string v1, "SharedBytes"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4
    new-array v2, v3, [B

    .line 5
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBytesSharedMemory error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "getBytesSharedMemory sharedMemory == null"

    .line 8
    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2
.end method

.method private setBytesMemoryFile([B)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 3
    iput-object v1, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6
    iput-object v1, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    .line 7
    :cond_1
    iget v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    if-lez v0, :cond_2

    .line 8
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryFile-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    .line 9
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 10
    sget-object p1, Lorg/light/shared/SharedBytes;->MemoryFile_getFileDescriptor:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    .line 11
    sget-object v0, Lorg/light/shared/SharedBytes;->Constructor_ParcelFileDescriptor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBytesSharedMemory error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SharedBytes"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setBytesSharedMemory([B)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedMemory-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    .line 5
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object p1, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p1, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 8
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBytesSharedMemory error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SharedBytes"

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
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
    invoke-virtual {p0}, Lorg/light/shared/SharedBytes;->release()V

    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    iget v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lorg/light/shared/SharedBytes;->ApiLevelSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lorg/light/shared/SharedBytes;->getBytesSharedMemory()[B

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lorg/light/shared/SharedBytes;->getBytesMemoryFile()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getBytesLength()I
    .locals 1

    iget v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    return v0
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    .line 2
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 4
    iput-object v1, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    .line 7
    iput-object v1, p0, Lorg/light/shared/SharedBytes;->memoryFile:Landroid/os/MemoryFile;

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 10
    iput-object v1, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedBytes"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBytes([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    iput v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    .line 2
    invoke-static {}, Lorg/light/shared/SharedBytes;->ApiLevelSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/light/shared/SharedBytes;->setBytesSharedMemory([B)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/light/shared/SharedBytes;->setBytesMemoryFile([B)V

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/light/shared/SharedBytes;->bytesLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-static {}, Lorg/light/shared/SharedBytes;->ApiLevelSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->sharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/light/shared/SharedBytes;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_0
    return-void
.end method
