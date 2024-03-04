.class Lig/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Ljava/security/Provider;

.field static final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/internal/w;->c()Ljava/security/Provider;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    :goto_0
    sput-object v0, Lig/o$b;->a:Ljava/security/Provider;

    .line 3
    sput-object v1, Lig/o$b;->b:Ljava/lang/Throwable;

    return-void
.end method
