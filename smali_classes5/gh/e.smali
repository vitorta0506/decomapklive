.class public final Lgh/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgh/e$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field private static d:Lgh/e;


# instance fields
.field private final a:Lgh/d;

.field private final b:Lih/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lih/c<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lgh/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgh/e;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lgh/d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgh/e;->a:Lgh/d;

    .line 3
    new-instance p1, Lih/c;

    new-instance v0, Lgh/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgh/e$b;-><init>(Lgh/e;Lgh/e$a;)V

    invoke-direct {p1, v0}, Lih/c;-><init>(Lih/c$b;)V

    iput-object p1, p0, Lgh/e;->b:Lih/c;

    return-void
.end method

.method public static declared-synchronized a()Lgh/e;
    .locals 3

    const-class v0, Lgh/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lgh/e;->d:Lgh/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lgh/e;

    invoke-static {}, Lgh/d;->a()Lgh/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lgh/e;-><init>(Lgh/d;)V

    sput-object v1, Lgh/e;->d:Lgh/e;

    .line 3
    :cond_0
    sget-object v1, Lgh/e;->d:Lgh/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
