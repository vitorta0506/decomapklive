.class public Lcom/linecorp/linesdk/dialog/internal/TargetUser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;


# direct methods
.method public static d()I
    .locals 1

    invoke-static {}, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->values()[Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object v0

    array-length v0, v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public e()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;
    .locals 1

    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->d:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    return-object v0
.end method

.method public f(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->c:Ljava/lang/Boolean;

    return-void
.end method
