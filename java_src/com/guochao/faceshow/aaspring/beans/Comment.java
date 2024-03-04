package com.guochao.faceshow.aaspring.beans;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.StyleSpan;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.bean.CommentTypeListBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.List;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class Comment implements h, Parcelable {
    public static final Parcelable.Creator<Comment> CREATOR = new Parcelable.Creator<Comment>() { // from class: com.guochao.faceshow.aaspring.beans.Comment.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Comment createFromParcel(Parcel parcel) {
            return new Comment(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Comment[] newArray(int i9) {
            return new Comment[i9];
        }
    };
    private String avatar;
    private String byCommentator;
    private String byCommentatorId;
    private String comment;
    private int commentId;
    private String commentJson;
    private Comment commentParent;
    private String createTime;
    private String isCommentator;
    private int isLike;
    private int levelId;
    private int likeNum;
    private int parentCommentId;
    private int sex;
    private String userId;
    private String userImg;
    private UserVipData userVipMsg;
    private int videoId;

    public Comment() {
    }

    public static CharSequence getRealComment(final Context context, Comment comment) {
        if (TextUtils.isEmpty(comment.getCommentJson())) {
            return comment.getComment();
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayList arrayList = (ArrayList) GsonGetter.getGson().fromJson(comment.getCommentJson(), new TypeToken<List<CommentTypeListBean>>() { // from class: com.guochao.faceshow.aaspring.beans.Comment.1
        }.getType());
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            for (int i9 = 0; i9 < size; i9++) {
                final CommentTypeListBean commentTypeListBean = (CommentTypeListBean) arrayList.get(i9);
                String content = commentTypeListBean.getContent();
                if ("3".equals(commentTypeListBean.getType())) {
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(content);
                    spannableStringBuilder2.setSpan(new ClickableSpan() { // from class: com.guochao.faceshow.aaspring.beans.Comment.2
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            Intent intent = new Intent(context, UserHomePageAct.class);
                            intent.putExtra(Contants.USER_ID, commentTypeListBean.getUserId());
                            context.startActivity(intent);
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            textPaint.setColor(context.getResources().getColor(R.color.ugc_topic_color));
                            textPaint.setUnderlineText(false);
                        }
                    }, 0, content.length(), 33);
                    spannableStringBuilder2.setSpan(new StyleSpan(1), 0, content.length(), 33);
                    spannableStringBuilder.append((CharSequence) spannableStringBuilder2);
                    spannableStringBuilder.append((CharSequence) " ");
                } else {
                    spannableStringBuilder.append((CharSequence) content);
                }
            }
        }
        return spannableStringBuilder;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.userImg;
    }

    public String getByCommentator() {
        return this.byCommentator;
    }

    public String getByCommentatorId() {
        return this.byCommentatorId;
    }

    public String getComment() {
        return this.comment;
    }

    public int getCommentId() {
        return this.commentId;
    }

    public String getCommentJson() {
        return this.commentJson;
    }

    public Comment getCommentParent() {
        return this.commentParent;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return null;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    public String getIsCommentator() {
        return this.isCommentator;
    }

    public int getIsLike() {
        return this.isLike;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    public int getLevelId() {
        return this.levelId;
    }

    public int getLikeNum() {
        return this.likeNum;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public int getParentCommentId() {
        return this.parentCommentId;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public int getSex() {
        return this.sex;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserImg() {
        return this.userImg;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public int getVideoId() {
        return this.videoId;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setByCommentator(String str) {
        this.byCommentator = str;
    }

    public void setByCommentatorId(String str) {
        this.byCommentatorId = str;
    }

    public void setComment(String str) {
        this.comment = str;
    }

    public void setCommentId(int i9) {
        this.commentId = i9;
    }

    public void setCommentJson(String str) {
        this.commentJson = str;
    }

    public void setCommentParent(Comment comment) {
        this.commentParent = comment;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setIsCommentator(String str) {
        this.isCommentator = str;
    }

    public void setIsLike(int i9) {
        this.isLike = i9;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setLikeNum(int i9) {
        this.likeNum = i9;
    }

    public void setParentCommentId(int i9) {
        this.parentCommentId = i9;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserImg(String str) {
        this.userImg = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVideoId(int i9) {
        this.videoId = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userImg);
        parcel.writeInt(this.isLike);
        parcel.writeString(this.createTime);
        parcel.writeString(this.isCommentator);
        parcel.writeInt(this.commentId);
        parcel.writeInt(this.parentCommentId);
        parcel.writeInt(this.videoId);
        parcel.writeString(this.comment);
        parcel.writeString(this.commentJson);
        parcel.writeString(this.userId);
        parcel.writeInt(this.likeNum);
        parcel.writeString(this.byCommentator);
        parcel.writeString(this.byCommentatorId);
        parcel.writeInt(this.sex);
        parcel.writeInt(this.levelId);
        parcel.writeParcelable(this.commentParent, i9);
        parcel.writeString(this.avatar);
        parcel.writeParcelable(this.userVipMsg, i9);
    }

    protected Comment(Parcel parcel) {
        this.userImg = parcel.readString();
        this.isLike = parcel.readInt();
        this.createTime = parcel.readString();
        this.isCommentator = parcel.readString();
        this.commentId = parcel.readInt();
        this.parentCommentId = parcel.readInt();
        this.videoId = parcel.readInt();
        this.comment = parcel.readString();
        this.commentJson = parcel.readString();
        this.userId = parcel.readString();
        this.likeNum = parcel.readInt();
        this.byCommentator = parcel.readString();
        this.byCommentatorId = parcel.readString();
        this.sex = parcel.readInt();
        this.levelId = parcel.readInt();
        this.commentParent = (Comment) parcel.readParcelable(Comment.class.getClassLoader());
        this.avatar = parcel.readString();
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
    }
}
