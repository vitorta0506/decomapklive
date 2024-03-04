.class Lmg/d$c;
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
.field final synthetic a:Lmg/d;


# direct methods
.method constructor <init>(Lmg/d;)V
    .locals 0

    iput-object p1, p0, Lmg/d$c;->a:Lmg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    :try_start_0
    const-string v0, "sun.nio.ch.SelectorImpl"

    const/4 v1, 0x0

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->P()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    return-object v0
.end method
