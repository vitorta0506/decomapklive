.class public Lob/b;
.super Lob/c;
.source "SourceFile"


# instance fields
.field private final l:Lob/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lob/c;-><init>()V

    .line 2
    new-instance v0, Lob/j;

    invoke-direct {v0, p1, p0}, Lob/j;-><init>(Landroid/app/Activity;Lob/c;)V

    iput-object v0, p0, Lob/b;->l:Lob/j;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lob/b;->l:Lob/j;

    invoke-virtual {v0}, Lob/j;->g()V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lob/b;->l:Lob/j;

    invoke-virtual {v0}, Lob/j;->k()V

    return-void
.end method
