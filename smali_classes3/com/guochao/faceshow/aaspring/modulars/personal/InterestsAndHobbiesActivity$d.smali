.class Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->m0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    const-class v0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Ljava/lang/Class;I)V

    return-void
.end method
