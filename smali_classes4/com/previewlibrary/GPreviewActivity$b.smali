.class Lcom/previewlibrary/GPreviewActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/GPreviewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/GPreviewActivity;


# direct methods
.method constructor <init>(Lcom/previewlibrary/GPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/GPreviewActivity$b;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity$b;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-static {v0}, Lcom/previewlibrary/GPreviewActivity;->access$200(Lcom/previewlibrary/GPreviewActivity;)Lcom/previewlibrary/wight/PhotoViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/GPreviewActivity$b;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-static {v0}, Lcom/previewlibrary/GPreviewActivity;->access$300(Lcom/previewlibrary/GPreviewActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/previewlibrary/GPreviewActivity$b;->a:Lcom/previewlibrary/GPreviewActivity;

    iget v1, v1, Lcom/previewlibrary/GPreviewActivity;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/view/BasePhotoFragment;

    .line 3
    invoke-virtual {v0}, Lcom/previewlibrary/view/BasePhotoFragment;->V1()V

    return-void
.end method
