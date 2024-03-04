.class public final Lo3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# static fields
.field public static final b:Lo3/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lo3/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo3/c;-><init>(Landroid/os/Bundle;Lo3/g;)V

    sput-object v1, Lo3/c;->b:Lo3/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lo3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/c;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lo3/c;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lo3/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lo3/c;

    iget-object v0, p0, Lo3/c;->a:Landroid/os/Bundle;

    .line 3
    iget-object p1, p1, Lo3/c;->a:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/n;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lo3/c;->a:Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
