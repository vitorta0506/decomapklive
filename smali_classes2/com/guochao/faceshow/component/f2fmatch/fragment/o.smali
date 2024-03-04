.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/fragment/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/o;->a:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/o;->b:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/o;->a:Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/o;->b:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;->Q1(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fVideoChatBinding;Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fVideoChatFragment;Landroid/view/View;)V

    return-void
.end method
