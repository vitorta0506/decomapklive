.class public abstract Lk9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk9/b$a;
    }
.end annotation


# instance fields
.field private onDataSetChangeListener:Lk9/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
.end method

.method public abstract getPopularity(I)I
.end method

.method public abstract getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk9/b;->onDataSetChangeListener:Lk9/b$a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lk9/b$a;->onChange()V

    return-void
.end method

.method public abstract onThemeColorChanged(Landroid/view/View;I)V
.end method

.method public setOnDataSetChangeListener(Lk9/b$a;)V
    .locals 0

    iput-object p1, p0, Lk9/b;->onDataSetChangeListener:Lk9/b$a;

    return-void
.end method
