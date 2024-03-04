.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field b:I

.field c:[I

.field d:[I

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-array p1, v0, [I

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->c:[I

    const v3, 0x7f0f0643

    aput v3, p1, v2

    const v3, 0x7f0f0644

    aput v3, p1, v1

    new-array p1, v0, [I

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->d:[I

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->d:[I

    const v0, 0x7f12005c

    aput v0, p1, v2

    const v0, 0x7f12098e

    .line 8
    aput v0, p1, v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->d:[I

    const v0, 0x7f1201e9

    aput v0, p1, v2

    const v0, 0x7f120773

    .line 10
    aput v0, p1, v1

    goto :goto_1

    :pswitch_1
    new-array p1, v0, [I

    .line 11
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->c:[I

    .line 12
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->c:[I

    const v3, 0x7f0f0640

    aput v3, p1, v2

    const v3, 0x7f0f0642

    .line 14
    aput v3, p1, v1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->c:[I

    const v3, 0x7f0f063f

    aput v3, p1, v2

    const v3, 0x7f0f0641

    .line 16
    aput v3, p1, v1

    :goto_0
    new-array p1, v0, [I

    .line 17
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->d:[I

    const v0, 0x7f120770

    aput v0, p1, v2

    const v0, 0x7f120771

    aput v0, p1, v1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f120775
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;-><init>(I)V

    .line 19
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->e:Ljava/util/List;

    return-void
.end method
