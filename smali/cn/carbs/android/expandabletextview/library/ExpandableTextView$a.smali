.class Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;


# direct methods
.method constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->b(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;->a:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->c(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)Landroid/widget/TextView$BufferType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->d(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
