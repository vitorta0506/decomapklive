.class public final synthetic Lv1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv1/o;

.field public final synthetic b:Ln1/o;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lv1/o;Ln1/o;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/d;->a:Lv1/o;

    iput-object p2, p0, Lv1/d;->b:Ln1/o;

    iput p3, p0, Lv1/d;->c:I

    iput-object p4, p0, Lv1/d;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lv1/d;->a:Lv1/o;

    iget-object v1, p0, Lv1/d;->b:Ln1/o;

    iget v2, p0, Lv1/d;->c:I

    iget-object v3, p0, Lv1/d;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lv1/o;->a(Lv1/o;Ln1/o;ILjava/lang/Runnable;)V

    return-void
.end method
