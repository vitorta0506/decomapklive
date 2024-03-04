.class Lcom/yalantis/ucrop/UCropFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yalantis/ucrop/view/widget/HorizontalProgressWheelView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yalantis/ucrop/UCropFragment;->p2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yalantis/ucrop/UCropFragment;


# direct methods
.method constructor <init>(Lcom/yalantis/ucrop/UCropFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yalantis/ucrop/UCropFragment$c;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$c;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->U1(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->x()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/UCropFragment$c;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {v0}, Lcom/yalantis/ucrop/UCropFragment;->U1(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yalantis/ucrop/view/CropImageView;->r()V

    return-void
.end method

.method public c(FF)V
    .locals 1

    iget-object p2, p0, Lcom/yalantis/ucrop/UCropFragment$c;->a:Lcom/yalantis/ucrop/UCropFragment;

    invoke-static {p2}, Lcom/yalantis/ucrop/UCropFragment;->U1(Lcom/yalantis/ucrop/UCropFragment;)Lcom/yalantis/ucrop/view/GestureCropImageView;

    move-result-object p2

    const/high16 v0, 0x42280000    # 42.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/yalantis/ucrop/view/CropImageView;->v(F)V

    return-void
.end method
