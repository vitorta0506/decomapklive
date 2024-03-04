.class public final synthetic Lcom/google/android/exoplayer2/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

.field public final synthetic b:Lcom/google/android/exoplayer2/l2;

.field public final synthetic c:Lv2/o0;

.field public final synthetic d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;Lcom/google/android/exoplayer2/l2;Lv2/o0;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/j;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/j;->b:Lcom/google/android/exoplayer2/l2;

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/j;->c:Lv2/o0;

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/j;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/j;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/j;->b:Lcom/google/android/exoplayer2/l2;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/j;->c:Lv2/o0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/j;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;Lcom/google/android/exoplayer2/l2;Lv2/o0;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Landroid/view/View;)V

    return-void
.end method
