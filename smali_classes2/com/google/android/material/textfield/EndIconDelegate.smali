.class abstract Lcom/google/android/material/textfield/EndIconDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field context:Landroid/content/Context;

.field final customEndIcon:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field endIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    iput p2, p0, Lcom/google/android/material/textfield/EndIconDelegate;->customEndIcon:I

    return-void
.end method


# virtual methods
.method abstract initialize()V
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method onSuffixVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method shouldTintIconOnError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
