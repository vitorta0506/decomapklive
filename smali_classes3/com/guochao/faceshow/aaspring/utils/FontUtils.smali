.class public Lcom/guochao/faceshow/aaspring/utils/FontUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/FontUtils$TypeFace;
    }
.end annotation


# static fields
.field private static final TYPEFACE_SPARSE_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIRST_RECHARGE:I = 0x5

.field public static final TYPE_GIFT_COMBO:I = 0x4

.field public static final TYPE_NUMBER_DIN:I = 0x1

.field public static final TYPE_UGC_NUMBER_DIN:I = 0x2

.field public static final TYPE_USER_CENTER_NUMBER_DIN:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->TYPEFACE_SPARSE_ARRAY:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeface(I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->TYPEFACE_SPARSE_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-nez v1, :cond_5

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/BebasNeue_1.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/Arial_Rounded_Bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/DIN_Alternate_Bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/DINCond-Black.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "font/DINEngschriftStd.otf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method public static setFont(Landroid/app/Activity;I)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFontForView(Landroid/view/View;I)V

    return-void
.end method

.method public static setFont(Landroid/app/Dialog;I)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFontForView(Landroid/view/View;I)V

    return-void
.end method

.method public static setFont(Landroid/widget/TextView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;II)V

    return-void
.end method

.method public static setFont(Landroid/widget/TextView;II)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public static setFont(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFontForView(Landroid/view/View;I)V

    return-void
.end method

.method public static setFontForView(Landroid/view/View;I)V
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFontForView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
