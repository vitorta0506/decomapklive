.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$initView$lambda-3$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0010"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "onLayoutChange",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
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
.field final synthetic $this_apply$inlined:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;


# direct methods
.method public constructor <init>(Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$initView$lambda-3$$inlined$doOnLayout$1;->$this_apply$inlined:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$initView$lambda-3$$inlined$doOnLayout$1;->$this_apply$inlined:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;

    iget-object p2, p2, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p3

    .line 4
    iget-object p4, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$initView$lambda-3$$inlined$doOnLayout$1;->$this_apply$inlined:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;

    iget-object p4, p4, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    .line 5
    iget-object p5, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberListFragment$initView$lambda-3$$inlined$doOnLayout$1;->$this_apply$inlined:Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;

    iget-object p5, p5, Lcom/guochao/component/liveroom/databinding/FragmentVoiceRoomMemberBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p5

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 7
    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void
.end method
