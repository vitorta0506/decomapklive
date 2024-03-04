.class public final synthetic Lv3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv3/g;


# direct methods
.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/t;->a:Lv3/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lv3/t;->a:Lv3/g;

    invoke-virtual {v0}, Lv3/g;->g()V

    return-void
.end method
