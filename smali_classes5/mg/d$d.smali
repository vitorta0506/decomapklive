.class Lmg/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmg/d;->j1()Lmg/d$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/nio/channels/Selector;

.field final synthetic c:Lmg/g;

.field final synthetic d:Lmg/d;


# direct methods
.method constructor <init>(Lmg/d;Ljava/lang/Class;Ljava/nio/channels/Selector;Lmg/g;)V
    .locals 0

    iput-object p1, p0, Lmg/d$d;->d:Lmg/d;

    iput-object p2, p0, Lmg/d$d;->a:Ljava/lang/Class;

    iput-object p3, p0, Lmg/d$d;->b:Ljava/nio/channels/Selector;

    iput-object p4, p0, Lmg/d$d;->c:Lmg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lmg/d$d;->a:Ljava/lang/Class;

    const-string v1, "selectedKeys"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmg/d$d;->a:Ljava/lang/Class;

    const-string v2, "publicSelectedKeys"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C0(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    .line 5
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C0(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-eqz v9, :cond_0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 6
    iget-object v0, p0, Lmg/d$d;->b:Ljava/nio/channels/Selector;

    iget-object v1, p0, Lmg/d$d;->c:Lmg/g;

    invoke-static {v0, v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->K0(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lmg/d$d;->b:Ljava/nio/channels/Selector;

    iget-object v1, p0, Lmg/d$d;->c:Lmg/g;

    invoke-static {v0, v5, v6, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->K0(Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v4

    :cond_0
    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/z;->b(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 9
    :cond_1
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/z;->b(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 10
    :cond_2
    iget-object v2, p0, Lmg/d$d;->b:Ljava/nio/channels/Selector;

    iget-object v3, p0, Lmg/d$d;->c:Lmg/g;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lmg/d$d;->b:Ljava/nio/channels/Selector;

    iget-object v2, p0, Lmg/d$d;->c:Lmg/g;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    return-object v0

    :catch_1
    move-exception v0

    return-object v0
.end method
