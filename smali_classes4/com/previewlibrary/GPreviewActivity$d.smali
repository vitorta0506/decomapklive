.class Lcom/previewlibrary/GPreviewActivity$d;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/previewlibrary/GPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/GPreviewActivity;


# direct methods
.method constructor <init>(Lcom/previewlibrary/GPreviewActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/previewlibrary/GPreviewActivity$d;->a:Lcom/previewlibrary/GPreviewActivity;

    .line 2
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity$d;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-static {v0}, Lcom/previewlibrary/GPreviewActivity;->access$300(Lcom/previewlibrary/GPreviewActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity$d;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-static {v0}, Lcom/previewlibrary/GPreviewActivity;->access$300(Lcom/previewlibrary/GPreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity$d;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-static {v0}, Lcom/previewlibrary/GPreviewActivity;->access$300(Lcom/previewlibrary/GPreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
