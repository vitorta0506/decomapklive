.class final Lio/grpc/netty/shaded/io/netty/util/internal/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsun/misc/Unsafe;

.field final synthetic b:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;->a:Lsun/misc/Unsafe;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    .line 1
    :try_start_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;->a:Lsun/misc/Unsafe;

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/util/internal/u$d;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    return-object v0

    :catch_1
    move-exception v0

    return-object v0
.end method
