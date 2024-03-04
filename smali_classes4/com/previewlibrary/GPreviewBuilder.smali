.class public final Lcom/previewlibrary/GPreviewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/previewlibrary/GPreviewBuilder$IndicatorType;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Intent;

.field private c:Ljava/lang/Class;

.field private d:Lbd/c;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/previewlibrary/GPreviewBuilder;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/previewlibrary/GPreviewBuilder;

    invoke-direct {v0, p0}, Lcom/previewlibrary/GPreviewBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public b(I)Lcom/previewlibrary/GPreviewBuilder;
    .locals 2

    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/previewlibrary/GPreviewBuilder;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/previewlibrary/enitity/IThumbViewInfo;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/previewlibrary/GPreviewBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "imagePaths"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public d(Z)Lcom/previewlibrary/GPreviewBuilder;
    .locals 2

    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    const-string v1, "isDrag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public e(Z)Lcom/previewlibrary/GPreviewBuilder;
    .locals 2

    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    const-string v1, "isSingleFling"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public f(Lcom/previewlibrary/GPreviewBuilder$IndicatorType;)Lcom/previewlibrary/GPreviewBuilder;
    .locals 2
    .param p1    # Lcom/previewlibrary/GPreviewBuilder$IndicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object p0
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    const-class v2, Lcom/previewlibrary/GPreviewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->d:Lbd/c;

    sput-object v0, Lcom/previewlibrary/view/BasePhotoFragment;->h:Lbd/c;

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    .line 8
    iput-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    return-void
.end method

.method public h(Ljava/lang/Class;)Lcom/previewlibrary/GPreviewBuilder;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/previewlibrary/GPreviewBuilder;->c:Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/GPreviewBuilder;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/previewlibrary/GPreviewBuilder;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object p0
.end method
