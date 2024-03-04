.class public final Lcom/guochao/faceshow/activity/TestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/faceshow/activity/TestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "binding",
        "Lcom/guochao/faceshow/databinding/ActivityTestBinding;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private binding:Lcom/guochao/faceshow/databinding/ActivityTestBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/activity/TestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/activity/TestActivity;->onCreate$lambda-0(Lcom/guochao/faceshow/activity/TestActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda-0(Lcom/guochao/faceshow/activity/TestActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TestActivity;->binding:Lcom/guochao/faceshow/databinding/ActivityTestBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/guochao/faceshow/databinding/ActivityTestBinding;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/databinding/ActivityTestBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ActivityTestBinding;

    move-result-object p1

    const-string v0, "inflate(layoutInflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TestActivity;->binding:Lcom/guochao/faceshow/databinding/ActivityTestBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    .line 3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/databinding/ActivityTestBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TestActivity;->binding:Lcom/guochao/faceshow/databinding/ActivityTestBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/guochao/faceshow/databinding/ActivityTestBinding;->start:Landroid/widget/Button;

    new-instance v0, Lcom/guochao/faceshow/activity/b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/b;-><init>(Lcom/guochao/faceshow/activity/TestActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
