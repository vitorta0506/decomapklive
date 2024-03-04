.class Lcom/previewlibrary/GPreviewActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/previewlibrary/wight/SmoothImageView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/GPreviewActivity;->transformOut()V
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

    iput-object p1, p0, Lcom/previewlibrary/GPreviewActivity$c;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/previewlibrary/wight/SmoothImageView$Status;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/previewlibrary/GPreviewActivity$c;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-virtual {p1}, Lcom/previewlibrary/GPreviewActivity;->getViewPager()Lcom/previewlibrary/wight/PhotoViewPager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/previewlibrary/GPreviewActivity$c;->a:Lcom/previewlibrary/GPreviewActivity;

    invoke-static {p1}, Lcom/previewlibrary/GPreviewActivity;->access$400(Lcom/previewlibrary/GPreviewActivity;)V

    return-void
.end method
