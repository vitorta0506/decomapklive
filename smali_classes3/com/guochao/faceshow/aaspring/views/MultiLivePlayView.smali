.class public Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;,
        Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field c:[Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

.field private d:Z

.field private e:Z

.field private f:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field i:F

.field j:F

.field k:F

.field l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e:Z

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f:I

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->h:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e:Z

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f:I

    .line 11
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    .line 12
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->h:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e:Z

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f:I

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    .line 18
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->h:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f()V

    return-void
.end method

.method public static c(IIILcom/guochao/faceshow/aaspring/views/MultiLivePlayView;Z)[Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;
    .locals 8

    .line 1
    new-array p3, p2, [Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    .line 2
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 3
    div-int/lit8 v2, p0, 0x2

    iput v2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->a:I

    .line 4
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->b:I

    .line 5
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 6
    iput v2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 7
    aput-object p4, p3, v0

    .line 8
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 9
    iput v2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->a:I

    .line 10
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->b:I

    .line 11
    iput v2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 12
    iput p0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 13
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    if-le p2, v1, :cond_0

    .line 14
    aput-object p4, p3, v1

    :cond_0
    return-object p3

    .line 15
    :cond_1
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    const/4 v2, 0x2

    packed-switch p2, :pswitch_data_0

    .line 16
    :pswitch_0
    div-int/lit8 v2, p2, 0x3

    goto/16 :goto_4

    .line 17
    :pswitch_1
    div-int/lit8 p1, p1, 0x3

    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 18
    div-int/lit8 v3, p0, 0x6

    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 19
    div-int/lit8 p0, p0, 0x3

    add-int v4, v3, p0

    iput v4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 20
    aput-object p4, p3, v0

    .line 21
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 22
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    add-int/2addr v3, p0

    .line 23
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    add-int/2addr v3, p0

    .line 24
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 25
    aput-object p4, p3, v1

    :goto_0
    if-ge v2, p2, :cond_2

    .line 26
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    add-int/lit8 v0, v2, 0x1

    .line 27
    rem-int/lit8 v3, v0, 0x3

    .line 28
    div-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    mul-int v5, p1, v4

    .line 29
    iput v5, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    sub-int/2addr v4, v1

    mul-int v4, v4, p1

    .line 30
    iput v4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    mul-int v4, p0, v3

    .line 31
    iput v4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    add-int/2addr v3, v1

    mul-int v3, v3, p0

    .line 32
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 33
    aput-object p4, p3, v2

    move v2, v0

    goto :goto_0

    .line 34
    :pswitch_2
    div-int/lit8 p1, p1, 0x3

    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 35
    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 v2, p0, 0x2

    iput v2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 36
    iput p0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 37
    aput-object p4, p3, v0

    const/4 p4, 0x1

    :goto_1
    if-ge p4, p2, :cond_2

    .line 38
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    add-int/lit8 v2, p4, 0x2

    .line 39
    rem-int/lit8 v3, v2, 0x3

    .line 40
    div-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    mul-int v4, p1, v2

    .line 41
    iput v4, v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    sub-int/2addr v2, v1

    mul-int v2, v2, p1

    .line 42
    iput v2, v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    mul-int v2, p0, v3

    .line 43
    iput v2, v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    add-int/2addr v3, v1

    mul-int v3, v3, p0

    .line 44
    iput v3, v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 45
    aput-object v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 46
    :pswitch_3
    div-int/lit8 v3, p1, 0x2

    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 47
    div-int/lit8 v4, p0, 0x2

    iput v4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 48
    aput-object p4, p3, v0

    .line 49
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 50
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 51
    iput p0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 52
    iput v4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 53
    aput-object p4, p3, v1

    :goto_2
    if-ge v2, p2, :cond_2

    .line 54
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    add-int/lit8 v0, v2, 0x1

    .line 55
    rem-int/lit8 v4, v0, 0x3

    .line 56
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 57
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    .line 58
    div-int/lit8 v5, p0, 0x3

    mul-int v6, v5, v4

    iput v6, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    add-int/2addr v4, v1

    mul-int v5, v5, v4

    .line 59
    iput v5, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 60
    aput-object p4, p3, v2

    move v2, v0

    goto :goto_2

    :goto_3
    :pswitch_4
    if-ge v0, p2, :cond_2

    .line 61
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v1

    .line 62
    rem-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v1

    .line 63
    div-int/lit8 v5, p1, 0x2

    mul-int v6, v5, v3

    iput v6, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 64
    div-int/lit8 v6, p0, 0x2

    mul-int v7, v6, v4

    iput v7, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    sub-int/2addr v4, v1

    mul-int v6, v6, v4

    .line 65
    iput v6, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    sub-int/2addr v3, v1

    mul-int v5, v5, v3

    .line 66
    iput v5, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    .line 67
    aput-object p4, p3, v0

    .line 68
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 69
    :pswitch_5
    div-int/lit8 p2, p1, 0x2

    iput p2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 70
    div-int/lit8 v3, p0, 0x4

    mul-int/lit8 v4, v3, 0x3

    iput v4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 71
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 72
    aput-object p4, p3, v0

    .line 73
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 74
    iput p2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    .line 75
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 76
    div-int/lit8 v3, p0, 0x2

    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 77
    iput v0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 78
    aput-object p4, p3, v1

    .line 79
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 80
    iput p2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    .line 81
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 82
    iput p0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 83
    iput v3, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 84
    aput-object p4, p3, v2

    goto :goto_5

    .line 85
    :pswitch_6
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 86
    div-int/lit8 p2, p0, 0x2

    iput p2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 87
    aput-object p4, p3, v0

    .line 88
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    .line 89
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 90
    iput p0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 91
    iput p2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    .line 92
    aput-object p4, p3, v1

    goto :goto_5

    .line 93
    :pswitch_7
    iput p1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 94
    iput p0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    .line 95
    aput-object p4, p3, v0

    goto :goto_5

    :goto_4
    if-ge v0, p2, :cond_2

    .line 96
    div-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    .line 97
    rem-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    .line 98
    div-int v5, p1, v2

    mul-int v6, v5, v3

    iput v6, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    .line 99
    div-int/lit8 v6, p0, 0x3

    mul-int v7, v6, v4

    iput v7, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    sub-int/2addr v4, v1

    mul-int v6, v6, v4

    .line 100
    iput v6, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    sub-int/2addr v3, v1

    mul-int v5, v5, v3

    .line 101
    iput v5, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    .line 102
    aput-object p4, p3, v0

    .line 103
    new-instance p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    invoke-direct {p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;-><init>()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    :goto_5
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private d(I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    return-object p1
.end method

.method private e(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 5
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->d(I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 15
    :goto_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    if-eqz v1, :cond_6

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v2

    .line 18
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 19
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    .line 20
    invoke-direct {p0, v3, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 21
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->d(I)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 23
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    :cond_5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public b(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->i:F

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->j:F

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 5
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->k:F

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->i:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v0, v0

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->l:F

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->j:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->i:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->k:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->j:F

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->l:F

    .line 12
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public g(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->g()V

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$c;-><init>(II)V

    return-object v0
.end method

.method public getAdapter()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;

    return-object v0
.end method

.method public getDefaultGapBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WatchLiveRoomActivity: multiLivePlayView.size:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->d:Z

    invoke-static {p2, p3, p1, p0, p4}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->c(IIILcom/guochao/faceshow/aaspring/views/MultiLivePlayView;Z)[Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    .line 4
    aget-object p4, p2, p3

    .line 5
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 6
    iget v0, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    iget v1, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    iget v2, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    iget p4, p4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    invoke-virtual {p5, v0, v1, v2, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->d:Z

    invoke-static {p1, p2, v0, p0, v1}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->c(IIILcom/guochao/faceshow/aaspring/views/MultiLivePlayView;Z)[Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->c:[Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->c:[Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;

    aget-object v3, v2, p1

    iget v3, v3, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->e:I

    aget-object v4, v2, p1

    iget v4, v4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->d:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    aget-object v4, v2, p1

    iget v4, v4, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->f:I

    aget-object v2, v2, p1

    iget v2, v2, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView$b;->c:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->b:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f()V

    return-void
.end method

.method public setDefaultGapBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->f:I

    return-void
.end method

.method public setLinkMicing(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->e:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPkMode(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->d:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/MultiLivePlayView;->d:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
