.class public final synthetic Lv1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv1/s;


# direct methods
.method public synthetic constructor <init>(Lv1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/q;->a:Lv1/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lv1/q;->a:Lv1/s;

    invoke-static {v0}, Lv1/s;->b(Lv1/s;)V

    return-void
.end method
