.class public final synthetic Lcom/guochao/faceshow/views/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/views/HourRankTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/j;->a:Lcom/guochao/faceshow/views/HourRankTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/j;->a:Lcom/guochao/faceshow/views/HourRankTextView;

    invoke-static {v0}, Lcom/guochao/faceshow/views/HourRankTextView;->b(Lcom/guochao/faceshow/views/HourRankTextView;)V

    return-void
.end method
