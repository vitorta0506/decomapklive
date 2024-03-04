.class Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$b;->a:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$b;-><init>(Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$b;->a:Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter;->b()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    invoke-virtual {p0}, Lcom/duolingo/open/rtlviewpager/DelegatingPagerAdapter$b;->onChanged()V

    return-void
.end method
