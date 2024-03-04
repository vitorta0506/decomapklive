.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/i;->a:Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/i;->a:Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;->Y1(Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;Ljava/lang/Integer;)V

    return-void
.end method
