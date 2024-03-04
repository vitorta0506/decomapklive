.class public final synthetic Leb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Leb/b;


# direct methods
.method public synthetic constructor <init>(Leb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb/a;->a:Leb/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Leb/a;->a:Leb/b;

    invoke-static {v0, p1}, Leb/b;->a(Leb/b;Landroid/view/View;)V

    return-void
.end method
