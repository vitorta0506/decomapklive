.class Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$c;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;Ljava/util/List;)V

    return-void
.end method
