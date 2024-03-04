.class final Lcom/google/common/hash/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/n$c;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/common/hash/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/common/hash/o;

    invoke-direct {v0}, Lcom/google/common/hash/o;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/hash/n$a;

    invoke-direct {v0}, Lcom/google/common/hash/n$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    new-instance v0, Lcom/google/common/hash/n$b;

    invoke-direct {v0}, Lcom/google/common/hash/n$b;-><init>()V

    .line 4
    :goto_0
    sput-object v0, Lcom/google/common/hash/n;->a:Lcom/google/common/base/w;

    return-void
.end method

.method public static a()Lcom/google/common/hash/m;
    .locals 1

    sget-object v0, Lcom/google/common/hash/n;->a:Lcom/google/common/base/w;

    invoke-interface {v0}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/m;

    return-object v0
.end method
