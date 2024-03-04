.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DateItemHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;",
        "(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;)V",
        "bind",
        "",
        "rule",
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

.field private final viewBinding:Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;->price:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getDiamond()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/min"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;->viewBinding:Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;->icon:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->access$getCurrentSelectIndex$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 4
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
