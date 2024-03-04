.class public final synthetic Lcom/google/firebase/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/b;


# instance fields
.field public final synthetic a:Lcom/google/firebase/d;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/c;->a:Lcom/google/firebase/d;

    iput-object p2, p0, Lcom/google/firebase/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/c;->a:Lcom/google/firebase/d;

    iget-object v1, p0, Lcom/google/firebase/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/firebase/d;->b(Lcom/google/firebase/d;Landroid/content/Context;)Lp6/a;

    move-result-object v0

    return-object v0
.end method
