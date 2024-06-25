package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 在线学习留言
 *
 * @author 
 * @email
 * @date 2021-04-15
 */
@TableName("zaixianxuexi_liuyan")
public class ZaixianxuexiLiuyanEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public ZaixianxuexiLiuyanEntity() {

	}

	public ZaixianxuexiLiuyanEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 在线学习id
     */
    @TableField(value = "zaixianxuexi_id")

    private Integer zaixianxuexiId;


    /**
     * 用户id
     */
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 留言内容
     */
    @TableField(value = "zaixianxuexi_liuyan_content")

    private String zaixianxuexiLiuyanContent;


    /**
     * 回复内容
     */
    @TableField(value = "reply_content")

    private String replyContent;


    /**
     * 讨论时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：在线学习id
	 */
    public Integer getZaixianxuexiId() {
        return zaixianxuexiId;
    }


    /**
	 * 获取：在线学习id
	 */

    public void setZaixianxuexiId(Integer zaixianxuexiId) {
        this.zaixianxuexiId = zaixianxuexiId;
    }
    /**
	 * 设置：用户id
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户id
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：留言内容
	 */
    public String getZaixianxuexiLiuyanContent() {
        return zaixianxuexiLiuyanContent;
    }


    /**
	 * 获取：留言内容
	 */

    public void setZaixianxuexiLiuyanContent(String zaixianxuexiLiuyanContent) {
        this.zaixianxuexiLiuyanContent = zaixianxuexiLiuyanContent;
    }
    /**
	 * 设置：回复内容
	 */
    public String getReplyContent() {
        return replyContent;
    }


    /**
	 * 获取：回复内容
	 */

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }
    /**
	 * 设置：讨论时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：讨论时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "ZaixianxuexiLiuyan{" +
            "id=" + id +
            ", zaixianxuexiId=" + zaixianxuexiId +
            ", yonghuId=" + yonghuId +
            ", zaixianxuexiLiuyanContent=" + zaixianxuexiLiuyanContent +
            ", replyContent=" + replyContent +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
