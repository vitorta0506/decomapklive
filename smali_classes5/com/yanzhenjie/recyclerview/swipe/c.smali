.class public final Lcom/yanzhenjie/recyclerview/swipe/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lbg/g;

.field private final d:Landroid/view/View;

.field e:I

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(IILbg/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/c;->a:I

    .line 3
    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/c;->b:I

    .line 4
    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/c;->c:Lbg/g;

    .line 5
    iput-object p4, p0, Lcom/yanzhenjie/recyclerview/swipe/c;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/c;->e:I

    return v0
.end method
